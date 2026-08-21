control 'AC-02h.02' do
  impact 0.5
  title "account managers and #{input('ac_02_odp_05')} are notified within #{input('ac_02_odp_07')} when users are terminated or transferred;"
  desc <<~DESC
    a. Define and document the types of accounts allowed and specifically prohibited for use within the system;
    b. Assign account managers;
    c. Require #{input('ac_02_odp_01')} for group and role membership;
    d. Specify:
      1. Authorized users of the system;
      2. Group and role membership; and
      3. Access authorizations (i.e., privileges) and #{input('ac_02_odp_02')} for each account;
    e. Require approvals by #{input('ac_02_odp_03')} for requests to create accounts;
    f. Create, enable, modify, disable, and remove accounts in accordance with #{input('ac_02_odp_04')};
    g. Monitor the use of accounts;
    h. Notify account managers and #{input('ac_02_odp_05')} within:
      1. #{input('ac_02_odp_06')} when accounts are no longer required;
      2. #{input('ac_02_odp_07')} when users are terminated or transferred; and
      3. #{input('ac_02_odp_08')} when system usage or need-to-know changes for an individual;
    i. Authorize access to the system based on:
      1. A valid access authorization;
      2. Intended system usage; and
      3. #{input('ac_02_odp_09')};
    j. Review accounts for compliance with account management requirements #{input('ac_02_odp_10')};
    k. Establish and implement a process for changing shared or group account authenticators (if deployed) when individuals are removed from the group; and
    l. Align account management processes with personnel termination and transfer processes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      account managers and #{input('ac_02_odp_05')} are notified within #{input('ac_02_odp_07')} when users are terminated or transferred;

    Assessment methods and objects:
      EXAMINE: Access control policy; personnel termination policy and procedure; personnel transfer policy and procedure; procedures for addressing account management; system design documentation; system configuration settings and associated documentation; list of active system accounts along with the name of the individual associated with each account; list of recently disabled system accounts and the name of the individual associated with each account; list of conditions for group and role membership; notifications of recent transfers, separations, or terminations of employees; access authorization records; account management compliance reviews; system monitoring records; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security with information security and privacy responsibilities
      TEST: Organizational processes for account management on the system; mechanisms for implementing account management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Examples of system account types include individual, shared, group, system, guest, anonymous, emergency, developer, temporary, and service. Identification of authorized system users and the specification of access privileges reflect the requirements in other controls in the security plan. Users requiring administrative privileges on system accounts receive additional scrutiny by organizational personnel responsible for approving such accounts and privileged access, including system owner, mission or business owner, senior agency information security officer, or senior agency official for privacy. Types of accounts that organizations may wish to prohibit due to increased risk include shared, group, emergency, anonymous, temporary, and guest accounts.

    Where access involves personally identifiable information, security programs collaborate with the senior agency official for privacy to establish the specific conditions for group and role membership; specify authorized users, group and role membership, and access authorizations for each account; and create, adjust, or remove system accounts in accordance with organizational policies. Policies can include such information as account expiration dates or other factors that trigger the disabling of accounts. Organizations may choose to define access privileges or other attributes by account, type of account, or a combination of the two. Examples of other attributes required for authorizing access include restrictions on time of day, day of week, and point of origin. In defining other system account attributes, organizations consider system-related requirements and mission/business requirements. Failure to consider these factors could affect system availability.

    Temporary and emergency accounts are intended for short-term use. Organizations establish temporary accounts as part of normal account activation procedures when there is a need for short-term accounts without the demand for immediacy in account activation. Organizations establish emergency accounts in response to crisis situations and with the need for rapid account activation. Therefore, emergency account activation may bypass normal account authorization processes. Emergency and temporary accounts are not to be confused with infrequently used accounts, including local logon accounts used for special tasks or when network resources are unavailable (may also be known as accounts of last resort). Such accounts remain available and are not subject to automatic disabling or removal dates. Conditions for disabling or deactivating accounts include when shared/group, emergency, or temporary accounts are no longer required and when individuals are transferred or terminated. Changing shared/group authenticators when members leave the group is intended to ensure that former group members do not retain access to the shared or group account. Some types of system accounts may require specialized training.
  GUIDANCE
  tag nist: ['AC-2']
  tag control: 'AC-2'
  tag objective: 'AC-02h.02'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_2: true
  tag odp: %w{ac_02_odp_01 ac_02_odp_02 ac_02_odp_03 ac_02_odp_04 ac_02_odp_05 ac_02_odp_06 ac_02_odp_07 ac_02_odp_08 ac_02_odp_09 ac_02_odp_10}

  describe 'NIST SP 800-53A Rev 5 objective AC-02h.02' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
