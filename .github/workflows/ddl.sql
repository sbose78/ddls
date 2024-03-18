name: Execute SQLs in the database
run-name: ${{ github.actor }} is running liquibase 🚀
on: [push]

steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/update@v4.26.0
  with:
    # The root changelog
    # string
    # Required
    changelogFile: "bookings.sql"

    # The JDBC database connection URL
    # string
    # Required
    url: "jdbc:snowflake://bg45124.ca-central-1.aws.snowflakecomputing.com/?db=liquibase_test&schema=test"

    # Fully-qualified class which specifies a ChangeExecListener
    # string
    # Optional
    changeExecListenerClass: ""

    # Path to a properties file for the ChangeExecListenerClass
    # string
    # Optional
    changeExecListenerPropertiesFile: ""

    # Changeset contexts to match
    # string
    # Optional
    contextFilter: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Changeset labels to match
    # string
    # Optional
    labelFilter: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: $SHOWFLAKE_PASSWORD

    # [PRO] Enable or disable reporting.
    # bool
    # Optional
    reportEnabled: ""

    # [PRO] The name of the report.
    # string
    # Optional
    reportName: ""

    # [PRO] The path to the directory to generate the report.
    # string
    # Optional
    reportPath: ""

    # If set to true and any changeset in a deployment fails, then the update operation stops, and liquibase attempts to rollback all changesets just deployed. A changeset marked "fail-on-error=false" does not trigger as an error, therefore rollback-on-error will not occur. Additionally, if a changeset is not auto-rollback compliant or does not have a rollback script, then no rollback-on-error will occur for any changeset.
    # bool
    # Optional
    rollbackOnError: ""

    # Type of update results summary to show.  Values can be "off", "summary", or "verbose".
    # string
    # Optional
    showSummary: ""

    # Summary output to report update summary results. Values can be "log", "console", or "all".
    # string
    # Optional
    showSummaryOutput: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: "SBOSE78"
