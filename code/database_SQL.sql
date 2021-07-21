CREATE TABLE IF NOT EXISTS stock_price(
    id INTEGER PRIMARY KEY,
    stock_id INTEGER,
    date NOT NULL,
    open NOT NULL,
    high NOT NULL,
    low NOT NULL,
    close NOT NULL,
    adjusted_close NOT NULL,
    vloume NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock (id)
);



INSERT INTO stock (symbol, company) VALUES ('AAPL', 'Apple');



SELECT symbol, date, open, high, low, close
FROM stock_price
JOIN stock on stock.id =stock_price.stock_id
WHERE symbol ="AAPL"
ORDER By date;