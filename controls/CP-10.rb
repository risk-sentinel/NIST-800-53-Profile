control 'CP-10' do
  impact 0.5
  title 'System Recovery and Reconstitution'
  desc <<~DESC
    Provide for the recovery and reconstitution of the system to a known state within #{input('cp_10_prm_1')} after a disruption, compromise, or failure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-10[01] the recovery of the system to a known state is provided within #{input('cp_10_odp_01')} after a disruption, compromise, or failure;
      CP-10[02] a reconstitution of the system to a known state is provided within #{input('cp_10_odp_02')} after a disruption, compromise, or failure.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system backup test results; contingency plan test results; contingency plan test documentation; redundant secondary system for system backups; location(s) of redundant secondary backup system(s); system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, recovery, and/or reconstitution responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes implementing system recovery and reconstitution operations; mechanisms supporting and/or implementing system recovery and reconstitution operations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Recovery is executing contingency plan activities to restore organizational mission and business functions. Reconstitution takes place following recovery and includes activities for returning systems to fully operational states. Recovery and reconstitution operations reflect mission and business priorities; recovery point, recovery time, and reconstitution objectives; and organizational metrics consistent with contingency plan requirements. Reconstitution includes the deactivation of interim system capabilities that may have been needed during recovery operations. Reconstitution also includes assessments of fully restored system capabilities, reestablishment of continuous monitoring activities, system reauthorization (if required), and activities to prepare the system and organization for future disruptions, breaches, compromises, or failures. Recovery and reconstitution capabilities can include automated mechanisms and manual procedures. Organizations establish recovery time and recovery point objectives as part of contingency planning.
  GUIDANCE
  tag nist: ['CP-10']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{cp_10_odp_01 cp_10_odp_02 cp_10_prm_1}

  describe 'NIST SP 800-53 Rev 5 control CP-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
