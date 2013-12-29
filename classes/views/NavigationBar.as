﻿package classes.views {	import flash.events.Event;	import flash.text.TextField;	import flash.text.TextFormat;	import flash.text.TextFormatAlign;	import flash.display.MovieClip;	import classes.utils.Constants;	import flash.display.DisplayObjectContainer;	import classes.controllers.MainController;	import flash.events.MouseEvent;		public class NavigationBar extends MovieClip{			private var buttonLesson:NavigationBarButton;		private var buttonExamens:NavigationBarButton;		private var buttonPuzzle:NavigationBarButton;			public function NavigationBar() {						buttonLesson = new NavigationBarButton("Leçons");			buttonLesson.x = 5;			buttonLesson.y = 10;			buttonLesson.height = 20;						buttonExamens = new NavigationBarButton("Examens")			buttonExamens.x = 50;			buttonExamens.y = 10;			buttonExamens.height = 20;						buttonPuzzle = new NavigationBarButton("Puzzle");			buttonPuzzle.x = 105;			buttonPuzzle.y = 10;			buttonPuzzle.height = 20;						this.addChild(buttonLesson);			this.addChild(buttonExamens);			this.addChild(buttonPuzzle);		}				public function getButtonLesson() {			return this.buttonLesson;		}				public function getButtonExamens() {			return this.buttonExamens;		}				public function getButtonPuzzle() {			return this.buttonPuzzle;		}				public function setController(controller:MainController) {			this.buttonLesson.addEventListener(MouseEvent.MOUSE_UP, controller.onClickButtonLesson);			this.buttonExamens.addEventListener(MouseEvent.MOUSE_UP, controller.onClickButtonExamens);			this.buttonPuzzle.addEventListener(MouseEvent.MOUSE_UP, controller.onClickButtonPuzzle);		}				public function setButtonActive(button:NavigationBarButton) {			buttonLesson.setActive(false);			buttonExamens.setActive(false);			buttonPuzzle.setActive(false);						button.setActive(true);		}			}	}