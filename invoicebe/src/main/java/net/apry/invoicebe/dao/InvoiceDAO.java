package net.apry.invoicebe.dao;

import java.util.List;

import net.apry.invoicebe.dto.Invoice;

public interface InvoiceDAO {

	List<Invoice> list();
	
}
