
section .data
  ; HEADER
  header: db "Cebu Institute of Technology - University", 10, "College of Computer Studies", 10, "College Library", 10, "First Semester Academic Year 2023-2024", 10, 10, "CLASS LIST", 10, 10
  headerLen: equ $-header

  ; INITIALIZE LABELS
  lblId: db "ID Number: "
  lblIdLen: equ $-lblId
  lblLastName: db "Last Name: "
  lblLastNameLen: equ $-lblLastName
  lblFirstName: db "First Name: "
  lblFirstNameLen: equ $-lblFirstName
  lblMiddleName: db "Middle Name: "
  lblMiddleNameLen: equ $-lblMiddleName
  lblCourse: db "Course: "
  lblCourseLen: equ $-lblCourse
  lblYearLevel: db "Year Level: "
  lblYearLevelLen: equ $-lblYearLevel

  ; INITIALIZE STUDENT 1
  stdNo1Lbl: db "Student No. 1", 10
  stdNo1LblLen: equ $-stdNo1Lbl
  stdNo1Id: db "22-2096-279", 10
  stdNo1IdLen: equ $-stdNo1Id
  stdNo1LastName: db "Mendoza", 10
  stdNo1LastNameLen: equ $-stdNo1LastName
  stdNo1FirstName: db "Basil", 10
  stdNo1FirstNameLen: equ $-stdNo1FirstName
  stdNo1MiddleName: db "Basanung", 10
  stdNo1MiddleNameLen: equ $-stdNo1MiddleName
  stdNo1Course: db "BSCS", 10
  stdNo1CourseLen: equ $-stdNo1Course
  stdNo1YearLevel: db "2", 10, 10
  stdNo1YearLevelLen: equ $-stdNo1YearLevel

  ; INITIALIZE STUDENT 2
  stdNo2Lbl: db "Student No. 2", 10
  stdNo2LblLen: equ $-stdNo2Lbl
  stdNo2Id: db "22-1794-148", 10
  stdNo2IdLen: equ $-stdNo2Id
  stdNo2LastName: db "Sales", 10
  stdNo2LastNameLen: equ $-stdNo2LastName
  stdNo2FirstName: db "Stephen", 10
  stdNo2FirstNameLen: equ $-stdNo2FirstName
  stdNo2MiddleName: db "Dakay", 10
  stdNo2MiddleNameLen: equ $-stdNo2MiddleName
  stdNo2Course: db "BSCS", 10
  stdNo2CourseLen: equ $-stdNo2Course
  stdNo2YearLevel: db "2", 10, 10
  stdNo2YearLevelLen: equ $-stdNo2YearLevel

  ; INITIALIZE STUDENT 3
  stdNo3Lbl: db "Student No. 3", 10
  stdNo3LblLen: equ $-stdNo3Lbl
  stdNo3Id: db "22-4415-659", 10
  stdNo3IdLen: equ $-stdNo3Id
  stdNo3LastName: db "Sebial", 10
  stdNo3LastNameLen: equ $-stdNo3LastName
  stdNo3FirstName: db "Shanley", 10
  stdNo3FirstNameLen: equ $-stdNo3FirstName
  stdNo3MiddleName: db "Flores", 10
  stdNo3MiddleNameLen: equ $-stdNo3MiddleName
  stdNo3Course: db "BSCS", 10
  stdNo3CourseLen: equ $-stdNo3Course
  stdNo3YearLevel: db "2", 10, 10
  stdNo3YearLevelLen: equ $-stdNo3YearLevel

  ; INITIALIZE STUDENT 4
  stdNo4Lbl: db "Student No. 4", 10
  stdNo4LblLen: equ $-stdNo4Lbl
  stdNo4Id: db "22-0658-980", 10
  stdNo4IdLen: equ $-stdNo4Id
  stdNo4LastName: db "Robillos", 10
  stdNo4LastNameLen: equ $-stdNo4LastName
  stdNo4FirstName: db "Jorash", 10
  stdNo4FirstNameLen: equ $-stdNo4FirstName
  stdNo4MiddleName: db "Colong", 10
  stdNo4MiddleNameLen: equ $-stdNo4MiddleName
  stdNo4Course: db "BSCS", 10
  stdNo4CourseLen: equ $-stdNo4Course
  stdNo4YearLevel: db "2", 10, 10
  stdNo4YearLevelLen: equ $-stdNo4YearLevel

  ; INITIALIZE STUDENT 5
  stdNo5Lbl: db "Student No. 5", 10
  stdNo5LblLen: equ $-stdNo5Lbl
  stdNo5Id: db "22-1018-175", 10
  stdNo5IdLen: equ $-stdNo5Id
  stdNo5LastName: db "Repuesto", 10
  stdNo5LastNameLen: equ $-stdNo5LastName
  stdNo5FirstName: db "Charlene", 10
  stdNo5FirstNameLen: equ $-stdNo5FirstName
  stdNo5MiddleName: db "Ripdos", 10
  stdNo5MiddleNameLen: equ $-stdNo5MiddleName
  stdNo5Course: db "BSCS", 10
  stdNo5CourseLen: equ $-stdNo5Course
  stdNo5YearLevel: db "2", 10, 10
  stdNo5YearLevelLen: equ $-stdNo5YearLevel

  ; FOOTER
  lblProgrammerName: db "Programmer Name: "
  lblProgrammerNameLen: equ $-lblProgrammerName
  programmerName: db "Adrian Sajulga", 10
  programmerNameLen: equ $-programmerName
  lblDate: db "Date: "
  lblDateLen: equ $-lblDate
  date: db "10-5-2023"
  dateLen: equ $-date

section .text
  global _start  
_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, header
  mov edx, headerLen
  int 80h

  ; DISPLAY STUDENT 1
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1Lbl
  mov edx, stdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1Id
  mov edx, stdNo1IdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblLastName
  mov edx, lblLastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1LastName
  mov edx, stdNo1LastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblFirstName
  mov edx, lblFirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1FirstName
  mov edx, stdNo1FirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblMiddleName
  mov edx, lblMiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1MiddleName
  mov edx, stdNo1MiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblCourse
  mov edx, lblCourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1Course
  mov edx, stdNo1CourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearLevel
  mov edx, lblYearLevelLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo1YearLevel
  mov edx, stdNo1YearLevelLen
  int 80h

  ; DISPLAY STUDENT 2
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2Lbl
  mov edx, stdNo2LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2Id
  mov edx, stdNo2IdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblLastName
  mov edx, lblLastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2LastName
  mov edx, stdNo2LastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblFirstName
  mov edx, lblFirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2FirstName
  mov edx, stdNo2FirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblMiddleName
  mov edx, lblMiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2MiddleName
  mov edx, stdNo2MiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblCourse
  mov edx, lblCourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2Course
  mov edx, stdNo2CourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearLevel
  mov edx, lblYearLevelLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo2YearLevel
  mov edx, stdNo2YearLevelLen
  int 80h

  ; DISPLAY STUDENT 3
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3Lbl
  mov edx, stdNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3Id
  mov edx, stdNo3IdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblLastName
  mov edx, lblLastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3LastName
  mov edx, stdNo3LastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblFirstName
  mov edx, lblFirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3FirstName
  mov edx, stdNo3FirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblMiddleName
  mov edx, lblMiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3MiddleName
  mov edx, stdNo3MiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblCourse
  mov edx, lblCourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3Course
  mov edx, stdNo3CourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearLevel
  mov edx, lblYearLevelLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo3YearLevel
  mov edx, stdNo3YearLevelLen
  int 80h

  ; DISPLAY STUDENT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4Lbl
  mov edx, stdNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4Id
  mov edx, stdNo4IdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblLastName
  mov edx, lblLastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4LastName
  mov edx, stdNo4LastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblFirstName
  mov edx, lblFirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4FirstName
  mov edx, stdNo4FirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblMiddleName
  mov edx, lblMiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4MiddleName
  mov edx, stdNo4MiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblCourse
  mov edx, lblCourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4Course
  mov edx, stdNo4CourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearLevel
  mov edx, lblYearLevelLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo4YearLevel
  mov edx, stdNo4YearLevelLen
  int 80h

  ; DISPLAY STUDENT 5
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5Lbl
  mov edx, stdNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5Id
  mov edx, stdNo5IdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblLastName
  mov edx, lblLastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5LastName
  mov edx, stdNo5LastNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblFirstName
  mov edx, lblFirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5FirstName
  mov edx, stdNo5FirstNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblMiddleName
  mov edx, lblMiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5MiddleName
  mov edx, stdNo5MiddleNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblCourse
  mov edx, lblCourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5Course
  mov edx, stdNo5CourseLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearLevel
  mov edx, lblYearLevelLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, stdNo5YearLevel
  mov edx, stdNo5YearLevelLen
  int 80h

  ; DISPLAY FOOTER
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProgrammerName
  mov edx, lblProgrammerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, programmerName
  mov edx, programmerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDate
  mov edx, lblDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, date
  mov edx, dateLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h