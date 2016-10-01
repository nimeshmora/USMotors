<?php
/**
 * Created by PhpStorm.
 * User: Nimesha Jinarajadasa
 * Date: 10/1/2016
 * Time: 6:16 PM
 */

class HomePageController extends BaseController {

    public function getHomePage(){

        return View::make('index-views.home');
    }
}