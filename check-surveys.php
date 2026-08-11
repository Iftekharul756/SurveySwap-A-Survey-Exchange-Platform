<?php
// Check if surveys were inserted

$db_host = '127.0.0.1';
$db_user = 'root';
$db_name = 'surveyswap';

try {
    $pdo = new PDO(
        "mysql:host=$db_host;dbname=$db_name;charset=utf8mb4",
        $db_user,
        '',
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    // Check total surveys
    $stmt = $pdo->query("SELECT COUNT(*) as total FROM surveys");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo "Total surveys in database: " . $result['total'] . "\n";

    // Check native surveys
    $stmt = $pdo->query("SELECT COUNT(*) as total FROM surveys WHERE source_type = 'native'");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo "Native surveys in database: " . $result['total'] . "\n";

    // List all native surveys
    $stmt = $pdo->query("SELECT id, title, status, created_at FROM surveys WHERE source_type = 'native' ORDER BY id");
    $surveys = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if (count($surveys) > 0) {
        echo "\nNative surveys found:\n";
        foreach ($surveys as $survey) {
            echo "  ID: {$survey['id']}, Title: {$survey['title']}, Status: {$survey['status']}\n";
        }
    } else {
        echo "\nNo native surveys found!\n";
    }

} catch (PDOException $e) {
    die("Database error: " . $e->getMessage() . "\n");
}
?>
