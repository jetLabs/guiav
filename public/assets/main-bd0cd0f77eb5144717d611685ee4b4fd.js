$(window).load(function(){$(".dropdown-toggle").dropdown(),$(this).scrollTop()<$("body").height()-2*$("#footer").outerHeight(!0)&&$("#arrow-up").hide(),$(function(){$(window).scroll(function(){$(this).scrollTop()>$("body").height()-2*$("#footer").outerHeight(!0)?$("#arrow-up").fadeIn():$("#arrow-up").fadeOut()}),$("#arrow-up i").click(function(){return $("body,html").animate({scrollTop:0},800),!1})}),$(document).ready(function(){$("ul.youtube-videogallery").youtubeVideoGallery()})});