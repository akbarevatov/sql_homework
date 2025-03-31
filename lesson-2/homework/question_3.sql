drop table if exists photos
create table photos(
	id uniqueidentifier,
	photo varbinary(max)
)
insert into photos
select newid(), bulkcolumn from openrowset(
	bulk 'C:\Users\User\Downloads\demo_photo.jpg', single_blob
) as demo_image