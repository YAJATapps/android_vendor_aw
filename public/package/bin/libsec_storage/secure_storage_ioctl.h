/*
 * (C) Copyright 2007-2013
 * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
 * Char <yanjianbo@allwinnertech.com>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

#ifndef __SECURE_STORAGE_IOCTRL_H__
#define __SECURE_STORAGE_IOCTRL_H__

#define SST_STORAGE_READ    _IO('V',1)
#define SST_STORAGE_WRITE   _IO('V',2)
#define OEM_PATH            ("/dev/sst_storage")

struct sst_storage_data{
    int32_t id;
    uint32_t buf;
    uint32_t len;
    uint32_t offset;
};

extern int _nand_read_ioctl(int id, unsigned char *buf, ssize_t len);
extern int _nand_write_ioctl( int   id, unsigned char *buf, ssize_t len);
extern int _sd_read_ioctl(int id, unsigned char *buf, ssize_t len);
extern int _sd_read_backup_ioctl(int id, unsigned char *buf, ssize_t len);
extern int _sd_write_ioctl( int id, unsigned char *buf, ssize_t len);

#endif
