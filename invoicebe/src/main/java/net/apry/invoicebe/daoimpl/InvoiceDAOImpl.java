package net.apry.invoicebe.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.apry.invoicebe.dao.InvoiceDAO;
import net.apry.invoicebe.dto.Invoice;

@Repository("invoiceDAO")
public class InvoiceDAOImpl implements InvoiceDAO {

	private static List<Invoice> invoices = new ArrayList<>();

	static {
		Invoice invoice = new Invoice();

		invoice.setId(1);
		invoice.setName("Santoso");
		invoice.setAddress("Bandar Lampung, Lampung");
		invoice.setNo_hp("081200112233");
		invoice.setTotal_harga(575000);
		invoice.setOngkir(25000);
		invoice.setTotal_seluruh(600000);

		invoices.add(invoice);

		invoice = new Invoice();

		invoice.setId(2);
		invoice.setName("Pariman");
		invoice.setAddress("Tanjung Karang, Lampung");
		invoice.setNo_hp("081200112233");
		invoice.setTotal_harga(675000);
		invoice.setOngkir(25000);
		invoice.setTotal_seluruh(700000);

		invoices.add(invoice);
	}

	@Override
	public List<Invoice> list() {
		// TODO Auto-generated method stub
		return invoices;
	}

}
