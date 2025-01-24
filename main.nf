include { samplesheetToList } from 'plugin/nf-schema'

workflow {
    def input = file("${projectDir}/samplesheet.csv", checkIfExists: true)
    def schema = file("${projectDir}/schema_input.json", checkIfExists: true)
    Channel.fromList(samplesheetToList(input, schema)).view()
}