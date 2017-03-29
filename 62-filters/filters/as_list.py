
from __future__ import absolute_import



def as_list(data):
    if type(data) is list:
        return data
    if type(data) is tuple:
        return data
    assert type(data) in [str,unicode,int]
    return [data]


class FilterModule(object):
    def filters(self):
        return {
            'as_list': as_list,
        }
