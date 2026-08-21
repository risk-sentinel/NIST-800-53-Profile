control 'PS-05a.' do
  impact 0.5
  title "the ongoing operational need for current logical and physical access authorizations to systems and facilities are reviewed and confirmed when individuals are reassigned or transferred to other positions within the organization;"
  desc <<~DESC
    a. Review and confirm ongoing operational need for current logical and physical access authorizations to systems and facilities when individuals are reassigned or transferred to other positions within the organization;
    b. Initiate #{input('ps_05_odp_01')} within #{input('ps_05_odp_02')};
    c. Modify access authorization as needed to correspond with any changes in operational need due to reassignment or transfer; and
    d. Notify #{input('ps_05_odp_03')} within #{input('ps_05_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the ongoing operational need for current logical and physical access authorizations to systems and facilities are reviewed and confirmed when individuals are reassigned or transferred to other positions within the organization;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel transfer; records of personnel transfer actions; list of system and facility access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Organizational processes for personnel transfer; mechanisms supporting and/or implementing personnel transfer notifications; mechanisms for disabling system access/revoking authenticators
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel transfer applies when reassignments or transfers of individuals are permanent or of such extended duration as to make the actions warranted. Organizations define actions appropriate for the types of reassignments or transfers, whether permanent or extended. Actions that may be required for personnel transfers or reassignments to other positions within organizations include returning old and issuing new keys, identification cards, and building passes; closing system accounts and establishing new accounts; changing system access authorizations (i.e., privileges); and providing for access to official records to which individuals had access at previous work locations and in previous system accounts.
  GUIDANCE
  tag nist: ['PS-5']
  tag control: 'PS-5'
  tag objective: 'PS-05a.'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ps_5: true
  tag odp: %w{ps_05_odp_01 ps_05_odp_02 ps_05_odp_03 ps_05_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective PS-05a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
