package com.oldhu.fileserver.command.impl;

import com.oldhu.fileserver.command.AbstractCommand;
import java.nio.ByteBuffer;

/*
 * 'Create' command protocol
 *
 * Client -> Server:
 * ------------------
 * | E | <64bit ID> |
 * ------------------
 *
 * Server -> Client:
 * -----
 * | O |
 * -----
 */
public class Erase extends AbstractCommand
{

	@Override
	public void processBuffer(ByteBuffer bb) throws Exception
	{
		throw new UnsupportedOperationException("Not supported yet.");
	}

	@Override
	public boolean isEndOfProcessing()
	{
		throw new UnsupportedOperationException("Not supported yet.");
	}

	@Override
	public ByteBuffer getResult()
	{
		throw new UnsupportedOperationException("Not supported yet.");
	}

	@Override
	public void complete()
	{
		throw new UnsupportedOperationException("Not supported yet.");
	}
}
