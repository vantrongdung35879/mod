.class public Lbq/utils/param;
.super Ljava/lang/Object;
.source "param.java"


# static fields
.field private static pool:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/util/Map$Entry<",
            "[I[J>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbq/utils/param;->pool:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create_new_param_wrapper_obj()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    new-array v2, v2, [J

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static get_param_wrapper_from_pool()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 36
    sget-object v0, Lbq/utils/param;->pool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 40
    sget-object v1, Lbq/utils/param;->pool:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v2

    sget-object v2, Lbq/def/log_arg_type_enum;->unsupported_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please don\'t cache bq log unbox object!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    invoke-static {}, Lbq/utils/param;->create_new_param_wrapper_obj()Ljava/util/Map$Entry;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v3, Lbq/def/log_arg_type_enum;->unsupported_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v3}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v3

    aput v3, v1, v2

    return-object v0
.end method

.method public static no_boxing(B)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->int8_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    int-to-long v4, p0

    aput-wide v4, v1, v3

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x4

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static no_boxing(C)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->char16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    int-to-long v4, p0

    aput-wide v4, v1, v3

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x4

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static no_boxing(D)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->double_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    aput-wide p0, v1, v3

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 p1, 0x1

    const-wide/16 v1, 0xc

    aput-wide v1, p0, p1

    return-object v0
.end method

.method public static no_boxing(F)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->float_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    aput-wide v4, v1, v3

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static no_boxing(I)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->int32_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    int-to-long v4, p0

    aput-wide v4, v1, v3

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static no_boxing(J)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->int64_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aput-wide p0, v1, v3

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 p1, 0x1

    const-wide/16 v1, 0xc

    aput-wide v1, p0, p1

    return-object v0
.end method

.method public static no_boxing(S)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->int16_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    int-to-long v4, p0

    aput-wide v4, v1, v3

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x4

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static no_boxing(Z)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map$Entry<",
            "[I[J>;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lbq/utils/param;->get_param_wrapper_from_pool()Ljava/util/Map$Entry;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->bool_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    aput-wide v4, v1, v3

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x4

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public static return_param_wrapper_to_pool(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "[I[J>;)V"
        }
    .end annotation

    .line 64
    sget-object v0, Lbq/utils/param;->pool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 65
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lbq/def/log_arg_type_enum;->unsupported_type:Lbq/def/log_arg_type_enum;

    invoke-virtual {v2}, Lbq/def/log_arg_type_enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 66
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
