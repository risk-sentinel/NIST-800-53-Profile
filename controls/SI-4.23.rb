control 'SI-4 (23)' do
  impact 0.5
  title 'Host-based Devices'
  desc <<~DESC
    Implement the following host-based monitoring mechanisms at #{input('si_04_23_odp_02')}: #{input('si_04_23_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(23) #{input('si_04_23_odp_01')} are implemented on #{input('si_04_23_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; host-based monitoring mechanisms; system monitoring tools and techniques documentation; system configuration settings and associated documentation; list of system components requiring host-based monitoring; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring system hosts
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing a host-based monitoring capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Host-based monitoring collects information about the host (or system in which it resides). System components in which host-based monitoring can be implemented include servers, notebook computers, and mobile devices. Organizations may consider employing host-based monitoring mechanisms from multiple product developers or vendors.
  GUIDANCE
  tag nist: ['SI-4 (23)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_04_23_odp_01 si_04_23_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (23)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
