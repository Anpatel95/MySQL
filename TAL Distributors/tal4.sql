select
	itemnum,
    description,
	onHand,
    Price,
    onHand * Price AS onhandValue
from
	item
where
	category = 'PZL'