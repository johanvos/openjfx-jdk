list(APPEND PAL_SOURCES
    text/KillRingNone.cpp
    system/java/SoundJava.cpp
)

list(APPEND PAL_INCLUDE_DIRECTORIES
    "${ICU_INCLUDE_DIRS}"
)

if (APPLE)
    list(APPEND PAL_SOURCES
        crypto/commoncrypto/CryptoDigestCommonCrypto.cpp
    )
else ()
    list(APPEND PAL_INCLUDE_DIRECTORIES
        "${WEBCORE_DIR}/platform"
    )
    list(APPEND PAL_SOURCES
        crypto/java/CryptoDigestJava.cpp
    )
endif ()

add_definitions(-DSTATICALLY_LINKED_WITH_JavaScriptCore)
add_definitions(-DSTATICALLY_LINKED_WITH_WTF)
