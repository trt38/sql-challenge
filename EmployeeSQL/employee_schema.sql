PGDMP              	        	    x           Employee_DB    11.9    11.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16808    Employee_DB    DATABASE     �   CREATE DATABASE "Employee_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Employee_DB";
             postgres    false            �            1259    16809    departments    TABLE     u   CREATE TABLE public.departments (
    dept_no character varying(50) NOT NULL,
    dept_name character varying(50)
);
    DROP TABLE public.departments;
       public         postgres    false            �            1259    16815    dept_emp    TABLE     X   CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying(50)
);
    DROP TABLE public.dept_emp;
       public         postgres    false            �            1259    16821    dept_manager    TABLE     e   CREATE TABLE public.dept_manager (
    dept_no character varying(50),
    emp_no integer NOT NULL
);
     DROP TABLE public.dept_manager;
       public         postgres    false            �            1259    16835 	   employees    TABLE     �   CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    emp_title_id character varying(50),
    birth_date date,
    first_name character(50),
    last_name character(50),
    sex character(1),
    hire_date date
);
    DROP TABLE public.employees;
       public         postgres    false            �            1259    16853    salaries    TABLE     R   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer
);
    DROP TABLE public.salaries;
       public         postgres    false            �            1259    16856    titles    TABLE     e   CREATE TABLE public.titles (
    title_id character varying(50) NOT NULL,
    title character(50)
);
    DROP TABLE public.titles;
       public         postgres    false            �
           2606    16871    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public         postgres    false    196            �
           2606    16869    dept_manager dept_manager_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public         postgres    false    198            �
           2606    16892    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    199            �
           2606    16898    salaries salaries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_pkey;
       public         postgres    false    200            �
           2606    16903    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public         postgres    false    201           