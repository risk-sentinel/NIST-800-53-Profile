control 'AC-4 (29)' do
  impact 0.5
  title 'Filter Orchestration Engines'
  desc <<~DESC
    When transferring information between different security domains, employ content filter orchestration engines to ensure that:
      (a) Content filtering mechanisms successfully complete execution without errors; and
      (b) Content filtering actions occur in the correct order and comply with #{input('ac_04_29_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-04(29)(a) when transferring information between security domains, content filter orchestration engines are employed to ensure that content-filtering mechanisms successfully complete execution without errors;
      AC-04(29)(b)
        AC-04(29)(b)[01] when transferring information between security domains, content filter orchestration engines are employed to ensure that content-filtering actions occur in the correct order;
        AC-04(29)(b)[02] when transferring information between security domains, content filter orchestration engines are employed to ensure that content-filtering actions comply with #{input('ac_04_29_odp')}.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions; mechanisms implementing content filter orchestration engines
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Content filtering is the process of inspecting information as it traverses a cross-domain solution and determines if the information meets a predefined security policy. An orchestration engine coordinates the sequencing of activities (manual and automated) in a content filtering process. Errors are defined as either anomalous actions or unexpected termination of the content filter process. This is not the same as a filter failing content due to non-compliance with policy. Content filter reports are a commonly used mechanism to ensure that expected filtering actions are completed successfully.
  GUIDANCE
  tag nist: ['AC-4 (29)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_04_29_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-4 (29)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
