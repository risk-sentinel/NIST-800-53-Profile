control 'SI-04(22)(b)' do
  impact 0.5
  title "#{input('si_04_22_odp_02')} is/are initiated when network services that have not been authorized or approved by authorization or approval processes are detected."
  desc <<~DESC
    (a) Detect network services that have not been authorized or approved by #{input('si_04_22_odp_01')} ; and
    (b) #{input('si_04_22_odp_02')} when detected.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_04_22_odp_02')} is/are initiated when network services that have not been authorized or approved by authorization or approval processes are detected.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; documented authorization/approval of network services; notifications or alerts of unauthorized network services; system monitoring logs or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing a system monitoring capability; mechanisms for auditing network services; mechanisms for providing alerts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Unauthorized or unapproved network services include services in service-oriented architectures that lack organizational verification or validation and may therefore be unreliable or serve as malicious rogues for valid services.
  GUIDANCE
  tag nist: ['SI-4 (22)']
  tag control: 'SI-4 (22)'
  tag objective: 'SI-04(22)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_si_4_22: true
  tag odp: %w{si_04_22_odp_01 si_04_22_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SI-04(22)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
