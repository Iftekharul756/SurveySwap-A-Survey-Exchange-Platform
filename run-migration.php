<?php

declare(strict_types=1);

require_once __DIR__ . '/includes/bootstrap.php';

try {
    $pdo = db();
    
    // Read the migration file
    $migrationFile = __DIR__ . '/database/migrations/2026_04_17_add_native_surveys_seed.sql';
    $sql = file_get_contents($migrationFile);
    
    if (!$sql) {
        die("Failed to read migration file\n");
    }
    
    // Execute the migration
    $pdo->exec($sql);
    
    echo "✓ Migration 2026_04_17_add_native_surveys_seed.sql executed successfully!\n";
    echo "✓ 10 native surveys have been added to the database.\n";
    
} catch (Exception $e) {
    die("✗ Migration failed: " . $e->getMessage() . "\n");
}
