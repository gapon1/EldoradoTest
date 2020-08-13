<?php


namespace app\controllers;


use app\models\Song;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\RateLimiter;
use yii\rest\ActiveController;

class SongController extends ActiveController
{

    public $modelClass = Song::class;

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['authenticator']['only'] = ['create', 'update', 'delete'];
        $behaviors['authenticator']['authMethods'] = [
            HttpBearerAuth::class
        ];

        $behaviors['rateLimiter'] = [
            // Use class
            'class' => RateLimiter::class,
        ];
        return $behaviors;
    }
}