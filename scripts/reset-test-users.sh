#!/usr/bin/env bash

function resetTestUsers() {

#  # Have to delete existing account interventions here as any update to the user in user-profile resets the
#  # PublicSubjectID and SubjectID fields which are used to generate the pairwise id for the intervention, which then
#  # breaks the link between the user and any existing intervention in the stub table, and leaves an orphaned intervention
  deleteIntervention $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_1
  deleteIntervention $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_2
  deleteIntervention $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_3
  deleteIntervention $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_4
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_1
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_2
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_3
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_4
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_5
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_6
  deleteIntervention $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_7
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_1
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_2
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_4
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_5
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_6
  deleteIntervention $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_7
  deleteIntervention $ACCOUNT_INTERVENTION_REMOVED_EMAIL_1

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
    $TEST_USER_REAUTH_SMS_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_2 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_3 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_4 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_5 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_6 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_REAUTH_SMS_7 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_REAUTH_AUTH_APP_1 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_REAUTH_AUTH_APP_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_REAUTH_AUTH_APP_3 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $INCORRECT_EMAIL_OTP_FOR_PW_RESET_EMAIL \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TOO_MANY_EMAIL_OTP_REQUESTS_FOR_PW_RESET_EMAIL \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PASSWORD_RESET_SMS_USER_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PASSWORD_RESET_SMS_USER_2 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $PASSWORD_RESET_AUTH_APP_USER_1 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_3 \
    $TOP_100K_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_4 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_3 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_4 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_5 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_6 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_7 \
    $TOP_100K_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $ACCOUNT_INTERVENTION_REMOVED_EMAIL_1 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_1 \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_2 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_4 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_5 \
    $TOP_100K_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_6 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_7 \
    $TEST_USER_PASSWORD \
    $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET \
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
    $ACCOUNT_RECOVERY_REQUEST_SMS_CODE_LOCKOUT \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $ACCOUNT_RECOVERY_INCORRECT_AUTH_APP_CODE_NO_LIMIT \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $ACCOUNT_RECOVERY_INCORRECT_EMAIL_CODE \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $ACCOUNT_RECOVERY_INCORRECT_SMS_CODE \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $SIGN_IN_INCORRECT_PASSWORD_LOCKOUT \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $SIGN_IN_INCORRECT_SMS_CODE_LOCKOUT \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createSMSUser \
    $SIGN_IN_REQUEST_SMS_CODE_LOCKOUT \
    $TEST_USER_PASSWORD \
    $TEST_USER_PHONE_NUMBER \
    $TEST_USER_LATEST_TERMS_AND_CONDITIONS_VERSION

  createAuthAppUser \
    $SIGN_IN_AUTH_APP_CODE_LOCKOUT \
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

  deleteUser $CREATE_INCORRECT_EMAIL_CODE_LOCKOUT
  deleteUser $CREATE_INCORRECT_EMAIL_CODE_LOCKOUT_1
  deleteUser $CREATE_REQUEST_EMAIL_CODE_LOCKOUT
  deleteUser $CREATE_INCORRECT_SMS_CODE_LOCKOUT
  deleteUser $CREATE_REQUEST_SMS_CODE_LOCKOUT
  deleteUser $CREATE_INCORRECT_AUTH_APP_CODE_LOCKOUT
  deleteUser $TEST_USER_EMAIL_2
  deleteUser $TEST_USER_EMAIL_3
  deleteUser $TEST_USER_EMAIL_4

  updateTermsAndConditions $TERMS_AND_CONDITIONS_TEST_USER_EMAIL "1.0"
  updateTermsAndConditions $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_4 "1.0"
  updateTermsAndConditions $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_6 "1.0"
  updateTermsAndConditions $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_6 "1.0"

  resetPassword $RESET_PW_USER_EMAIL $TEST_USER_PASSWORD
  resetPassword $RESET_PW_USER_EMAIL_2 $TEST_USER_PASSWORD
  resetPassword $REQ_RESET_PW_USER_EMAIL $TOP_100K_PASSWORD
  resetPassword $REQ_RESET_PW_USER_EMAIL_2 $TOP_100K_PASSWORD
  resetPassword $TEST_USER_REAUTH_SMS_6 $TEST_USER_PASSWORD
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $TEST_USER_PASSWORD
  resetPassword $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $TEST_USER_PASSWORD

  removeMfaMethods $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1
  removeMfaMethods $ACCOUNT_RECOVERY_INCORRECT_SMS_CODE
  removeMfaMethods $TEST_USER_REAUTH_SMS_7
  removeMfaMethods $TEST_USER_REAUTH_AUTH_APP_3

  updateMfaSMS $TEST_USER_ACCOUNT_RECOVERY_EMAIL_1 $TEST_USER_PHONE_NUMBER "1"
  updateMfaAuthApp $TEST_USER_ACCOUNT_RECOVERY_EMAIL_2 $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET
  updateMfaSMS $ACCOUNT_RECOVERY_INCORRECT_SMS_CODE $TEST_USER_PHONE_NUMBER "1"
  updateMfaSMS $TEST_USER_REAUTH_SMS_7 $TEST_USER_PHONE_NUMBER "1"
  updateMfaAuthApp $TEST_USER_REAUTH_AUTH_APP_3 $ACCOUNT_RECOVERY_USER_AUTH_APP_SECRET

  updateAccountRecoveryBlock $RESET_PW_USER_EMAIL $SECTOR_HOST
  updateAccountRecoveryBlock $RESET_PW_USER_EMAIL_2 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_3 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_4 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_5 $SECTOR_HOST
  updateAccountRecoveryBlock $TEST_USER_ACCOUNT_RECOVERY_EMAIL_6 $SECTOR_HOST

  createSuspendedAccountInterventionsBlock $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_1 $SECTOR_HOST
  createSuspendedAccountInterventionsBlock $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_2 $SECTOR_HOST
  createSuspendedAccountInterventionsBlock $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_3 $SECTOR_HOST
  createSuspendedAccountInterventionsBlock $TEMPORARILY_SUSPENDED_ACCOUNT_EMAIL_4 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_1 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_2 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_3 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_4 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_5 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_6 $SECTOR_HOST
  createBlockedAccountInterventionsBlock $PERMANENTLY_LOCKED_ACCOUNT_EMAIL_7 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_1 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_2 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_4 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_5 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_6 $SECTOR_HOST
  createResetPasswordInterventionsBlock $TEST_USER_PASSWORD_RESET_ACCOUNT_EMAIL_7 $SECTOR_HOST
  removeAccountInterventionBlocks $ACCOUNT_INTERVENTION_REMOVED_EMAIL_1 $SECTOR_HOST
  }