*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${url}=  https://jsonplaceholder.typicode.com

*** Test Cases ***
POST API TEST
    create session  myssion ${url}
    ${body} =   create dictionary  userId=1    title=Test  body=HelloWorld
    ${header} =  create dictionary  Content-Type=application/json
    ${response} =   post request  myssion /posts    data=${body}    headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    #VALIDATION
    ${status_code} =    ${response.status_code}
    should be equal  ${status_code} 201



