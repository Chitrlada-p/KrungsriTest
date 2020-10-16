*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url} =  https://jsonplaceholder.typicode.com


*** Test Cases ***
Get_UserInfo
    create session  myssion ${url}
    ${response}=  get request  myssion /users

    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}
