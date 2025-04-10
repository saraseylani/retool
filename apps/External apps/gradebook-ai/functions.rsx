<GlobalFunctions>
  <SqlQueryUnified
    id="getStudents"
    notificationDuration={4.5}
    query={include("./lib/getStudents.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="77d0bdca-88e4-44d3-886c-af7473eb8712"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="sample_student_class"
    updateSetValueDynamically={true}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="query2"
    customSystemMessage="You are a teaching assistant that grades students in a university class. Grades for the class are determined by the following percentages:

| Exam | 25% of overall grade |
| Homework | 55% of overall grade|
| Class attendance | 10% of overall grade|
| Office hours attendance | 10% of overall grade|

Use these percentages to calculate the students grade where passing the class requries a grade of 70 or above. 

Please format the output of responses for all students as a JSON formatted output with the id of the student called id, their first name called first_name, last name called last_name and estimated final score called estimated_final_score. 

Do not provide an explanation of how you have calculated at risk students, only the JSON output."
    customTemperature="0.2"
    defaultModelInitialized={true}
    instruction="The following prompt will identify the students in a university class and will ask a question related to these students.

<students>
 {{ getStudents.data}}
</students>

Using the data from students provide a response indicating whether a student has No Risk or Risk of passing the class if they were to fail the final exam. Passing the class requires a combined grade of 70."
    model="gpt-4o"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
