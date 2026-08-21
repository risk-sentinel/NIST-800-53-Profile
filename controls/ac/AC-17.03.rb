control 'AC-17(03)' do
  impact 0.5
  title "remote accesses are routed through authorized and managed network access control points."
  desc <<~DESC
    Route remote accesses through authorized and managed network access control points.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      remote accesses are routed through authorized and managed network access control points.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access to the system; system design documentation; list of all managed network access control points; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms routing all remote accesses through managed network access control points
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider the Trusted Internet Connections (TIC) initiative [DHS TIC](#4f42ee6e-86cc-403b-a51f-76c2b4f81b54) requirements for external network connections since limiting the number of access control points for remote access reduces attack surfaces.
  GUIDANCE
  tag nist: ['AC-17 (3)']
  tag control: 'AC-17 (3)'
  tag objective: 'AC-17(03)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_17_3: true

  describe 'NIST SP 800-53A Rev 5 objective AC-17(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
