<?php
// Clean up duplicate surveys - keep only the first set (IDs 7-16)

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

    // Delete the duplicate surveys (IDs 17-26)
    $pdo->exec("DELETE FROM surveys WHERE id >= 17 AND id <= 26");
    
    echo "✓ Cleaned up duplicate surveys!\n";
    
    // Verify
    $stmt = $pdo->query("SELECT COUNT(*) as total FROM surveys WHERE source_type = 'native'");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo "Native surveys remaining: " . $result['total'] . "\n";

} catch (PDOException $e) {
    die("Database error: " . $e->getMessage() . "\n");
}
?>
