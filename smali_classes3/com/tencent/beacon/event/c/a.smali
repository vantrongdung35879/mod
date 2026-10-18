.class public final Lcom/tencent/beacon/event/c/a;
.super Ljava/lang/Object;
.source "EventBeanParser.java"


# direct methods
.method public static a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/EventBean;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/net/b/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Lcom/tencent/beacon/event/EventBean;

    invoke-direct {v1}, Lcom/tencent/beacon/event/EventBean;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/EventBean;->setEventCode(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Lcom/tencent/beacon/event/EventBean;->setAppKey(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/e;->r()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Lcom/tencent/beacon/event/EventBean;->setApn(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1, v3}, Lcom/tencent/beacon/event/EventBean;->setSrcIp(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/EventBean;->setEventCode(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/EventBean;->setValueType(I)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/tencent/beacon/event/EventBean;->setEventValue(Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "A34"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/tencent/beacon/event/EventBean;->setEventTime(J)V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->isSucceed()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/event/EventBean;->setEventResult(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent;->getType()Lcom/tencent/beacon/event/open/EventType;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/beacon/event/c/d;->a(Lcom/tencent/beacon/event/open/EventType;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tencent/beacon/event/EventBean;->setEventType(I)V

    const-string p0, ""

    .line 21
    invoke-virtual {v1, p0}, Lcom/tencent/beacon/event/EventBean;->setReserved(Ljava/lang/String;)V

    return-object v1
.end method
