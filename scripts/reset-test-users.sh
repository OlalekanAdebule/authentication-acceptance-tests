#!/usr/bin/env bash

function resetTestUsers() {

  createSMSUser \
    $TERMS_AND_CONDITIONS_TEST_USER_EMAIL \
    $TERMS_AND_CONDITIONS_TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $RESEND_CODE_TEST_USER_EMAIL \
    $RESEND_CODE_TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $IPN4_EXISTING_USER_EMAIL \
    $IPN4_EXISTING_USER_PASSWORD \
    $IPN4_EXISTING_USER_PHONE \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $RESET_PW_USER_EMAIL \
    $RESET_PW_CURRENT_PW \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $REQ_RESET_PW_USER_EMAIL \
    $REQ_RESET_PW_CURRENT_PW \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_3 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_4 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  deleteUser $TEST_USER_EMAIL
  deleteUser $PHONE_CODE_LOCK_TEST_USER_EMAIL
  deleteUser $TEST_USER_NEW_EMAIL
  deleteUser $TEST_USER_AUTH_APP_EMAIL
  deleteUser $IPN1_NEW_USER_EMAIL
  deleteUser $IPN2_NEW_USER_EMAIL
  deleteUser $IPN3_NEW_USER_EMAIL

  updateTermsAndConditions $TERMS_AND_CONDITIONS_TEST_USER_EMAIL "1.0"

  resetPassword $RESET_PW_USER_EMAIL $RESET_PW_CURRENT_PW
  resetPassword $REQ_RESET_PW_USER_EMAIL $REQ_RESET_PW_CURRENT_PW

  removeMfaMethods $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1
  updateMfaSMS $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $PW_RESET_TEST_USER_PHONE "1"
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $TEST_USER_PASSWORD
  updateMfaAuthApp $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $TEST_USER_PASSWORD
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_3 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_4 $SECTOR_HOST

}
