control 'SC-34(02)[01]' do
  impact 0.5
  title "the integrity of information is protected prior to storage on read-only media;"
  desc <<~DESC
    Protect the integrity of information prior to storage on read-only media and control the media after such information has been recorded onto the media.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the integrity of information is protected prior to storage on read-only media;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing non-modifiable executable programs; system design documentation; system configuration settings and associated documentation; system architecture; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing the capability to protect information integrity on read-only media prior to storage and after information has been recorded onto the media
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controls prevent the substitution of media into systems or the reprogramming of programmable read-only media prior to installation into the systems. Integrity protection controls include a combination of prevention, detection, and response.
  GUIDANCE
  tag nist: ['SC-34 (2)']
  tag control: 'SC-34 (2)'
  tag objective: 'SC-34(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_34_2: true

  describe 'NIST SP 800-53A Rev 5 objective SC-34(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
