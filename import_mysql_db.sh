#!/bin/bash

sudo mysql -u root -Bse "create database "${3}";""create user '"${1}"'@'localhost' identified by '"${2}"';""grant all privileges on "${3}".* to '"${1}"'@'localhost';""use "${3}";""source "${4}";"
