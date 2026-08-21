control 'SI-10(04)' do
  impact 0.5
  title "timing interactions among system components are accounted for in determining appropriate responses for invalid inputs."
  desc <<~DESC
    Account for timing interactions among system components in determining appropriate responses for invalid inputs.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      timing interactions among system components are accounted for in determining appropriate responses for invalid inputs.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing information input validation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information input validation; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for determining appropriate responses to invalid inputs; automated mechanisms supporting and/or implementing responses to invalid inputs
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In addressing invalid system inputs received across protocol interfaces, timing interactions become relevant, where one protocol needs to consider the impact of the error response on other protocols in the protocol stack. For example, 802.11 standard wireless network protocols do not interact well with Transmission Control Protocols (TCP) when packets are dropped (which could be due to invalid packet input). TCP assumes packet losses are due to congestion, while packets lost over 802.11 links are typically dropped due to noise or collisions on the link. If TCP makes a congestion response, it takes the wrong action in response to a collision event. Adversaries may be able to use what appear to be acceptable individual behaviors of the protocols in concert to achieve adverse effects through suitable construction of invalid input. The invalid inputs are those related to the information inputs defined by the organization in the base control ( [SI-10](#si-10)).
  GUIDANCE
  tag nist: ['SI-10 (4)']
  tag control: 'SI-10 (4)'
  tag objective: 'SI-10(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_10_4: true

  describe 'NIST SP 800-53A Rev 5 objective SI-10(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
