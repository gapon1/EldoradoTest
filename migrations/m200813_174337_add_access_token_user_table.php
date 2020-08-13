<?php

use yii\db\Migration;

/**
 * Class m200813_174337_add_access_token_user_table
 */
class m200813_174337_add_access_token_user_table extends Migration
{
    public function safeUp()
    {
        $this->addColumn('{{%user}}', 'access_token', $this->string(512)->after('auth_key'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%user}}', 'access_token');
    }

}
