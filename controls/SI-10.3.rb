control 'SI-10 (3)' do
  impact 0.5
  title 'Predictable Behavior'
  desc <<~DESC
    Verify that the system behaves in a predictable and documented manner when invalid inputs are received.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-10(03)[01] the system behaves in a predictable manner when invalid inputs are received;
      SI-10(03)[02] the system behaves in a documented manner when invalid inputs are received.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing information input validation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information input validation; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Automated mechanisms supporting and/or implementing predictable behavior when invalid inputs are received
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A common vulnerability in organizational systems is unpredictable behavior when invalid inputs are received. Verification of system predictability helps ensure that the system behaves as expected when invalid inputs are received. This occurs by specifying system responses that allow the system to transition to known states without adverse, unintended side effects. The invalid inputs are those related to the information inputs defined by the organization in the base control ( [SI-10](#si-10)).
  GUIDANCE
  tag nist: ['SI-10 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-10 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
