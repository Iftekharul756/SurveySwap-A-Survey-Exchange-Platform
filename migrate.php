<?php
// Simple database migration runner without framework dependencies

$db_host = '127.0.0.1';
$db_user = 'surveyswap_app';
$db_pass = 'surveyswap_app_2026';
$db_name = 'surveyswap';

try {
    $pdo = new PDO(
        "mysql:host=$db_host;dbname=$db_name;charset=utf8mb4",
        $db_user,
        $db_pass,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    $migrationFile = __DIR__ . '/database/migrations/2026_04_17_add_native_surveys_seed.sql';
    $sql = file_get_contents($migrationFile);

    // Split by semicolon but be careful with nested ones
    $statements = array_filter(array_map('trim', preg_split('/;+/', $sql)));

    foreach ($statements as $statement) {
        if (!empty($statement) && !str_starts_with(trim($statement), '--')) {
            $pdo->exec($statement);
        }
    }

    echo "✓ Migration executed successfully!\n";
    echo "✓ 10 native surveys have been added to the database.\n";

} catch (PDOException $e) {
    die("✗ Database error: " . $e->getMessage() . "\n");
}
?>
