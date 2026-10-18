.class public abstract Lcom/ihoc/mgpa/gradish/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/i1;->a:Ljava/lang/String;

    .line 3
    const-string v0, ""

    sput-object v0, Lcom/ihoc/mgpa/gradish/i1;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/i1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 1

    .line 8
    sget-object v0, Lcom/ihoc/mgpa/gradish/i1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/gradish/i1;->b:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUniqueIdReportOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/i1;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "report user info exception. "

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v1, v1, Lcom/ihoc/mgpa/gradish/L$b;->C:Z

    if-eqz v1, :cond_8

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "vivo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "oppo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "asus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "realme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "blackshark"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 39
    sget-object p0, Lcom/ihoc/mgpa/gradish/i1;->a:Ljava/lang/String;

    const-string v1, "In this manufacturer, do not support to get unique id. "

    invoke-static {p0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    invoke-static {p0}, Lcom/ihoc/mgpa/gradish/i1;->b(Ljava/util/Map;)V

    .line 43
    :cond_7
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->UNIQUE_ID2:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 44
    :pswitch_1
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->UNIQUE_ID2:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    :pswitch_2
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->UNIQUE_ID2:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 67
    :cond_8
    sget-object p0, Lcom/ihoc/mgpa/gradish/i1;->a:Ljava/lang/String;

    const-string v1, "Unique ID report fuc is not open, just report userinfo."

    invoke-static {p0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_2
    :pswitch_3
    sget-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l1IdReport:Z

    if-eqz p0, :cond_9

    .line 70
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->e()Ljava/lang/String;

    move-result-object p0

    const-string v1, "L1Flag"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "L1ID"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_9
    sget-boolean p0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l2IdReport:Z

    if-eqz p0, :cond_a

    .line 74
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->f()Ljava/lang/String;

    move-result-object p0

    const-string v1, "L2Flag"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "L2ID"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_a
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUniqueIdReportOpen()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 78
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->f()Ljava/lang/String;

    move-result-object p0

    const-string v1, "flag1"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->g()Ljava/lang/String;

    move-result-object p0

    const-string v1, "flag2"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->UNIQUE_ID:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_b
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSafeUniqueIdReportOpen()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 83
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->h()Ljava/lang/String;

    move-result-object p0

    const-string v1, "flagL2"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->UNIQUE_ID3:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->XID:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_c
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugIdReportOpen()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 88
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->DEBUGID:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DebugID"

    const-string v2, "-11"

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_d
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isVendorOAIDReportOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 92
    sget-object p0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->OAID:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_e
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->b(Ljava/util/HashMap;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x608d18ba -> :sswitch_5
        -0x37ba884a -> :sswitch_4
        -0x2d450b45 -> :sswitch_3
        0x2dd650 -> :sswitch_2
        0x3427a0 -> :sswitch_1
        0x373cac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b()Ljava/lang/String;
    .locals 7

    .line 4
    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "oiface"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 18
    :try_start_1
    const-string v4, "com.oppo.oiface.IOIfaceService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v4, 0x1f5

    .line 19
    invoke-interface {v1, v4, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 29
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmptyChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1

    .line 38
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw v0

    :catch_1
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/i1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    sget-object v1, Lcom/ihoc/mgpa/gradish/i1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->xidUpdate:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/j1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "UID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/i1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->xidUpdate:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/j1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "XID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->xidUpdate:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/j1;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "XID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
