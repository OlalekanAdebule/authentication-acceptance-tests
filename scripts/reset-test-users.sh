#!/usr/bin/env bash

function resetTestUsers() {

  createSMSUser \
    $TERMS_AND_CONDITIONS_TEST_USER_EMAIL \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $RESEND_CODE_TEST_USER_EMAIL \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $IPN4_EXISTING_USER_EMAIL \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_2_EMAIL \
    $TEST_USER_PASSWORD \
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

  createAuthAppUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_4 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_5 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_ACCOUNT_RECOVERY_EMAIL_6 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $RESET_PW_USER_EMAIL \
    $TOP_100K_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $RESET_PW_USER_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $REQ_RESET_PW_USER_EMAIL \
    $TOP_100K_PASSWORD \
    $$TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $REQ_RESET_PW_USER_EMAIL_2 \
    $TOP_100K_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_AUTH_APP_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_AUTH_APP_EMAIL_3 \
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
  deleteUser $TEST_USER_STATE_PRESERVATION_EMAIL1
  deleteUser $TEST_USER_STATE_PRESERVATION_EMAIL2
  deleteUser $TEST_USER_EMAIL_2
  deleteUser $TEST_USER_EMAIL_3
  deleteUser $TEST_USER_EMAIL_4

  updateTermsAndConditions $TERMS_AND_CONDITIONS_TEST_USER_EMAIL "1.0"

  resetPassword $RESET_PW_USER_EMAIL $TEST_USER_PASSWORD
  resetPassword $RESET_PW_USER_EMAIL_2 $TEST_USER_PASSWORD
  resetPassword $REQ_RESET_PW_USER_EMAIL $TOP_100K_PASSWORD
  resetPassword $REQ_RESET_PW_USER_EMAIL_2 $TOP_100K_PASSWORD
  resetPassword $TEST_USER_REAUTH_SMS_6 $TEST_USER_PASSWORD
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $TEST_USER_PASSWORD
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $TEST_USER_PASSWORD

  removeMfaMethods $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1
  removeMfaMethods $TEST_USER_REAUTH_SMS_7
  removeMfaMethods $TEST_USER_REAUTH_AUTH_APP_3

  updateMfaSMS $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $TEST_USER_PHONE_NUMBER "1"
  updateMfaAuthApp $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET
  updateMfaSMS $TEST_USER_REAUTH_SMS_7 $TEST_USER_PHONE_NUMBER "1"
  updateMfaAuthApp $TEST_USER_REAUTH_AUTH_APP_3 $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET
  updateAccountRecoveryBlock $RESET_PW_USER_EMAIL $SECTOR_HOST
  updateAccountRecoveryBlock $RESET_PW_USER_EMAIL_2 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_4 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_5 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_6 $SECTOR_HOST
  }