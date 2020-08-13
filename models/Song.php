<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%song}}".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $duration
 * @property int|null $created_at
 */
class Song extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%song}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['duration', 'created_at'], 'integer'],
            [['title'], 'string', 'max' => 512],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'duration' => 'Duration',
            'created_at' => 'Created At',
        ];
    }
}
