-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UiJEGQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Emplpoyees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Emplpoyees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" INT   NOT NULL
);

CREATE TABLE "Dept_managers" (
    "dept_no" INT   NOT NULL,
    "emp_no" INT   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" INT   NOT NULL,
    "title_id" INT   NOT NULL,
    "title" VARCHAR   NOT NULL
);

ALTER TABLE "Emplpoyees" ADD CONSTRAINT "fk_Emplpoyees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Dept_managers" ("emp_no");

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept_emp" ("dept_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Emplpoyees" ("emp_no");

ALTER TABLE "Dept_managers" ADD CONSTRAINT "fk_Dept_managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Emplpoyees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Emplpoyees" ("emp_no");

