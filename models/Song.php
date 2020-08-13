<?php

namespace app\models;

use Yii;
use yii\filters\RateLimitInterface;

/**
 * This is the model class for table "{{%song}}".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $duration
 * @property int|null $created_at
 */
class Song extends \yii\db\ActiveRecord implements RateLimitInterface
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

    public function getRateLimit($request, $action)
    {
        return [100, 60]; //не более 100 запросов в течении 60 секунд
    }
    public function loadAllowance($request, $action)
    {
        //$count - считаем сколько уже запросов совершил юзер, например по записям в некой таблице логов
        return [100-1, time()];
    }
    public function saveAllowance($request, $action, $allowance, $timestamp)
    {
        //записываем результат запроса, например в некоторую таблицу логов
    }
}
