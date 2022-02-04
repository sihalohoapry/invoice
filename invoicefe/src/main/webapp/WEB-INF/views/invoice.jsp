<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Invoice</title>

<style>
.invoice-box {
	max-width: 800px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.invoice-box table {
	width: 100%;
	line-height: inherit;
	text-align: left;
}

.invoice-box table td {
	padding: 5px;
	vertical-align: top;
}

.invoice-box table tr td:nth-child(2) {
	text-align: left;
	width: 50%;
}

.invoice-box table tr td:nth-child(1) {
	text-align: left;
	width: 50%;
}

.invoice-box table tr.top table td {
	padding-bottom: 0px;
}

.invoice-box table tr.top table td.title {
	font-size: 45px;
	line-height: 45px;
	color: #333;
}

.invoice-box table tr.information table td {
	padding-bottom: 20px;
}

.invoice-box table tr.heading td {
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-weight: bold;
}

.invoice-box table tr.details td {
	padding-bottom: 20px;
}

.invoice-box table tr.item td {
	border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
	border-bottom: none;
}

@media only screen and (max-width: 600px) {
	.invoice-box table tr.top table td {
		width: 100%;
		display: block;
		text-align: center;
	}
	.invoice-box table tr.information table td {
		width: 100%;
		display: block;
		text-align: center;
	}
}

/** RTL **/
.invoice-box.rtl {
	direction: rtl;
	font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial,
		sans-serif;
}

.invoice-box.rtl table {
	text-align: right;
}

.invoice-box.rtl table tr td:nth-child(2) {
	text-align: left;
}
</style>
</head>

<body>


	<c:forEach items="${invoices}" var="invoice">
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title"><img src="${images}/logo.png"
									style="width: 100%; max-width: 300px" /></td>

								<td>Nama : ${invoice.name}<br /> Alamat :
									${invoice.address}<br /> No.Hp : 081211220120
								</td>


							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>No. Order<br /> <u>CHN10021</u><br />
								</td>
							</tr>
						</table>
					</td>
				</tr>


				<tr class="heading">
					<td>Item</td>

					<td>Harga</td>
				</tr>

				<tr class="item">
					<td>Minyak Goreng <br> (3 X Rp 20.000)
					</td>

					<td>Rp 60.000</td>
				</tr>

				<tr class="item">
					<td>Rinso <br> (10 x Rp 10.000 ) <br> Disc 10%
					</td>

					<td>Rp. 90.000</td>
				</tr>




				<tr class="total">
					<td>Total Harga</td>

					<td>Rp. ${invoice.total_harga}</td>
				</tr>
				<tr class="total">
					<td>Ongkos Kirim</td>

					<td>Rp. ${invoice.ongkir}</td>
				</tr>
				<tr class="total">
					<td>Total Seluruh</td>

					<td><b>Rp. ${invoice.total_seluruh }</b></td>
				</tr>
			</table>
		</div>
	</c:forEach>



</body>
</html>