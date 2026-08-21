control 'SC-27' do
  impact 0.5
  title "#{input('sc_27_odp')} are included within organizational systems."
  desc <<~DESC
    Include within organizational systems the following platform independent applications: #{input('sc_27_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_27_odp')} are included within organizational systems.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing platform-independent applications; system design documentation; system configuration settings and associated documentation; list of platform-independent applications; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing platform-independent applications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Platforms are combinations of hardware, firmware, and software components used to execute software applications. Platforms include operating systems, the underlying computer architectures, or both. Platform-independent applications are applications with the capability to execute on multiple platforms. Such applications promote portability and reconstitution on different platforms. Application portability and the ability to reconstitute on different platforms increase the availability of mission-essential functions within organizations in situations where systems with specific operating systems are under attack.
  GUIDANCE
  tag nist: ['SC-27']
  tag control: 'SC-27'
  tag objective: 'SC-27'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_27: true
  tag odp: %w{sc_27_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-27' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
