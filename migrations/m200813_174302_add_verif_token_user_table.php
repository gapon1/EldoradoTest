<?php

use yii\db\Migration;

/**
 * Class m200813_174302_add_verif_token_user_table
 */
class m200813_174302_add_verif_token_user_table extends Migration
{
    public function up()
    {
        $this->addColumn('{{%user}}', 'verification_token', $this->string()->defaultValue(null));
    }

    public function down()
    {
        $this->dropColumn('{{%user}}', 'verification_token');
    }
}
