<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getStudents.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="af141"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="af141"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b2a33"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="64cd0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ae3dd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="homework_grade"
        label="Homework grade"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d1394"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="participation_grade"
        label="Participation grade"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fa90c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="exam_grade"
        label="Exam grade"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="52aa0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="attendance_grade"
        label="Attendance grade"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b10b8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        label="At Risk"
        placeholder="Select option"
        position="center"
        referenceId="atRisk"
        size={100}
        summaryAggregationMode="none"
        valueOverride={
          '{{ query2.data[i].estimated_final_score >= 70 ? "No Risk" : "Risk" }}'
        }
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getStudents"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
    <Button id="button1" text="Update Risk">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
