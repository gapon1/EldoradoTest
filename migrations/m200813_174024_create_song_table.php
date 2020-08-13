<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%song}}`.
 */
class m200813_174024_create_song_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%song}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(512),
            'duration' => $this->integer(),
            'created_at' => $this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%song}}');
    }
}
