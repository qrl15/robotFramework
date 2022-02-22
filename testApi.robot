*** Settings ***
Library     Collections



*** Test Cases ***
Play around with dictionary
    ${data} =   Create Dictionary       name=earljohnmahiya     course=robot        website=rahulshettyacademy.com
    log     ${data}
    Dictionary Should COntain Key   ${data}     name
    log     ${data}[name]
    ${url} =    Get From Dictionary     ${data}     website
    log     ${url}

    