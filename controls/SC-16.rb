control 'SC-16' do
  impact 0.5
  title 'Transmission of Security and Privacy Attributes'
  desc <<~DESC
    Associate #{input('sc_16_prm_1')} with information exchanged between systems and between system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-16[01] #{input('sc_16_odp_01')} are associated with information exchanged between systems;
      SC-16[02] #{input('sc_16_odp_01')} are associated with information exchanged between system components;
      SC-16[03] #{input('sc_16_odp_02')} are associated with information exchanged between systems;
      SC-16[04] #{input('sc_16_odp_02')} are associated with information exchanged between system components.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the transmission of security and privacy attributes; access control policy and procedures; information flow control policy; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms supporting and/or implementing the transmission of security and privacy attributes between systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security and privacy attributes can be explicitly or implicitly associated with the information contained in organizational systems or system components. Attributes are abstractions that represent the basic properties or characteristics of an entity with respect to protecting information or the management of personally identifiable information. Attributes are typically associated with internal data structures, including records, buffers, and files within the system. Security and privacy attributes are used to implement access control and information flow control policies; reflect special dissemination, management, or distribution instructions, including permitted uses of personally identifiable information; or support other aspects of the information security and privacy policies. Privacy attributes may be used independently or in conjunction with security attributes.
  GUIDANCE
  tag nist: ['SC-16']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_16_odp_01 sc_16_odp_02 sc_16_prm_1}

  describe 'NIST SP 800-53 Rev 5 control SC-16' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
