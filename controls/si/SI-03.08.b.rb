control 'SI-03(08)(b)' do
  impact 0.5
  title "#{input('si_03_08_odp_03')} is/are performed."
  desc <<~DESC
    (a) Detect the following unauthorized operating system commands through the kernel application programming interface on #{input('si_03_08_odp_02')}: #{input('si_03_08_odp_01')} ; and
    (b) #{input('si_03_08_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_03_08_odp_03')} is/are performed.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing malicious code protection; system design documentation; malicious code protection mechanisms; warning messages sent upon the detection of unauthorized operating system command execution; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for malicious code protection
      TEST: Mechanisms supporting and/or implementing malicious code protection capabilities; mechanisms supporting and/or implementing the detection of unauthorized operating system commands through the kernel application programming interface
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Detecting unauthorized commands can be applied to critical interfaces other than kernel-based interfaces, including interfaces with virtual machines and privileged applications. Unauthorized operating system commands include commands for kernel functions from system processes that are not trusted to initiate such commands as well as commands for kernel functions that are suspicious even though commands of that type are reasonable for processes to initiate. Organizations can define the malicious commands to be detected by a combination of command types, command classes, or specific instances of commands. Organizations can also define hardware components by component type, component, component location in the network, or a combination thereof. Organizations may select different actions for different types, classes, or instances of malicious commands.
  GUIDANCE
  tag nist: ['SI-3 (8)']
  tag control: 'SI-3 (8)'
  tag objective: 'SI-03(08)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_3_8: true
  tag odp: %w{si_03_08_odp_01 si_03_08_odp_02 si_03_08_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SI-03(08)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
