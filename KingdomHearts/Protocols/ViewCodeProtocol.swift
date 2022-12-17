protocol ViewCodeProtocol {
    func setup()
    func setupHierarchy()
    func setupConstraints()
    func setupExtraConfiguration()
}

extension ViewCodeProtocol {
    func setup() {
        setupHierarchy()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupExtraConfiguration() {}
}
