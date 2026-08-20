control 'AC-11 (1)' do
  impact 0.5
  title 'Pattern-hiding Displays'
  desc <<~DESC
    Conceal, via the device lock, information previously visible on the display with a publicly viewable image.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-11(01) information previously visible on the display is concealed, via device lock, with a publicly viewable image.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session lock; display screen with session lock activated; system design documentation; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: System session lock mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The pattern-hiding display can include static or dynamic images, such as patterns used with screen savers, photographic images, solid colors, clock, battery life indicator, or a blank screen with the caveat that controlled unclassified information is not displayed.
  GUIDANCE
  tag nist: ['AC-11 (1)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AC-11 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
