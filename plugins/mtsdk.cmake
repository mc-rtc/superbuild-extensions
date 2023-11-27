AptInstall(sharutils)

set (MTSDK_URL "https://seafile.lirmm.fr/f/ee9ea17af9f8439fabc0/?dl=1")
message(STATUS "MTSDK -- Downloading SDK archive")
DownloadFile("${MTSDK_URL}" "${CMAKE_CURRENT_BINARY_DIR}/mtsdk/mtsdk.tar.gz" "")
file(ARCHIVE_EXTRACT
      INPUT "${CMAKE_CURRENT_BINARY_DIR}/mtsdk/mtsdk.tar.gz"
      DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/mtsdk"
)

execute_process(
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mtsdk/MT_Software_Suite_linux-x86_2022.0
  COMMAND "echo -e ${CMAKE_INSTALL_PREFIX} | ./mtsdk_linux-x86_2022.0.sh"
)
