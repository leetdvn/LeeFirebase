include(FetchContent)

set(FIREBASE_VERSION "v11.8.0")

set(firebaseUrl "https://github.com/firebase/firebase-cpp-sdk.git")

#add_subdirectory(firebase_cpp_sdk)
FetchContent_Declare(
    gfirebase
    #Repository
    GIT_REPOSITORY ${firebaseUrl}
    GIT_SHALLOW ON
    #branch name
    GIT_TAG ${FIREBASE_VERSION}
)

FetchContent_GetProperties(gfirebase)

if(NOT gfirebase_POPULATED)
    FetchContent_Populate(
        gfirebase
    )
    #sub directoies
    add_subdirectory(${gfirebase_SOURCE_DIR} ${gfirebase_BINARY_DIR})
endif()