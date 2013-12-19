﻿package classes.models {		public class Question {		var question:String;		var goodAnswer:int;		var answers:Array;				public function Question(_question:String, _goodAnswer:int) {			question = _question;			goodAnswer = _goodAnswer;			answers = new Array();		}				public function addAnswer(_answer:String) {			answers.push(_answer);		}		public function toString() {			var str = "";			str += "Question : " + question + "\n";			str += "Answers : \n";			for(var i in answers) {				str += " - " + (i+1) + " " + answers[i];  				if(goodAnswer == i)					str += "*";				str += "\n";			}			str += "\n";			return str;		}				public function getAnswers() {			return answers;		}				public function getQuestion() {			return question;		}	}	}