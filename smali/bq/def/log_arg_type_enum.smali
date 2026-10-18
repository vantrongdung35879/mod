.class public final enum Lbq/def/log_arg_type_enum;
.super Ljava/lang/Enum;
.source "log_arg_type_enum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq/def/log_arg_type_enum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbq/def/log_arg_type_enum;

.field public static final enum bool_type:Lbq/def/log_arg_type_enum;

.field public static final enum char16_type:Lbq/def/log_arg_type_enum;

.field public static final enum char32_type:Lbq/def/log_arg_type_enum;

.field public static final enum char_type:Lbq/def/log_arg_type_enum;

.field public static final enum double_type:Lbq/def/log_arg_type_enum;

.field public static final enum float_type:Lbq/def/log_arg_type_enum;

.field public static final enum int16_type:Lbq/def/log_arg_type_enum;

.field public static final enum int32_type:Lbq/def/log_arg_type_enum;

.field public static final enum int64_type:Lbq/def/log_arg_type_enum;

.field public static final enum int8_type:Lbq/def/log_arg_type_enum;

.field public static final enum null_type:Lbq/def/log_arg_type_enum;

.field public static final enum pointer_type:Lbq/def/log_arg_type_enum;

.field public static final enum string_utf16_type:Lbq/def/log_arg_type_enum;

.field public static final enum string_utf32_type:Lbq/def/log_arg_type_enum;

.field public static final enum string_utf8_type:Lbq/def/log_arg_type_enum;

.field public static final enum string_utf_mixed_type:Lbq/def/log_arg_type_enum;

.field public static final enum uint16_type:Lbq/def/log_arg_type_enum;

.field public static final enum uint32_type:Lbq/def/log_arg_type_enum;

.field public static final enum uint64_type:Lbq/def/log_arg_type_enum;

.field public static final enum uint8_type:Lbq/def/log_arg_type_enum;

.field public static final enum unsupported_type:Lbq/def/log_arg_type_enum;


# direct methods
.method private static synthetic $values()[Lbq/def/log_arg_type_enum;
    .locals 3

    const/16 v0, 0x15

    .line 14
    new-array v0, v0, [Lbq/def/log_arg_type_enum;

    sget-object v1, Lbq/def/log_arg_type_enum;->unsupported_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->null_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->pointer_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->bool_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->char_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->char16_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->char32_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->int8_type:Lbq/def/log_arg_type_enum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->uint8_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->int16_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->uint16_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->int32_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->uint32_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->int64_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->uint64_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->float_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->double_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->string_utf8_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->string_utf16_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->string_utf32_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_arg_type_enum;->string_utf_mixed_type:Lbq/def/log_arg_type_enum;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "unsupported_type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->unsupported_type:Lbq/def/log_arg_type_enum;

    .line 16
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "null_type"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->null_type:Lbq/def/log_arg_type_enum;

    .line 17
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "pointer_type"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->pointer_type:Lbq/def/log_arg_type_enum;

    .line 18
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "bool_type"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->bool_type:Lbq/def/log_arg_type_enum;

    .line 19
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "char_type"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->char_type:Lbq/def/log_arg_type_enum;

    .line 20
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "char16_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->char16_type:Lbq/def/log_arg_type_enum;

    .line 21
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "char32_type"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->char32_type:Lbq/def/log_arg_type_enum;

    .line 22
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "int8_type"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->int8_type:Lbq/def/log_arg_type_enum;

    .line 23
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "uint8_type"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->uint8_type:Lbq/def/log_arg_type_enum;

    .line 24
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "int16_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->int16_type:Lbq/def/log_arg_type_enum;

    .line 25
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "uint16_type"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->uint16_type:Lbq/def/log_arg_type_enum;

    .line 26
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "int32_type"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->int32_type:Lbq/def/log_arg_type_enum;

    .line 27
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "uint32_type"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->uint32_type:Lbq/def/log_arg_type_enum;

    .line 28
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "int64_type"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->int64_type:Lbq/def/log_arg_type_enum;

    .line 29
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "uint64_type"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->uint64_type:Lbq/def/log_arg_type_enum;

    .line 30
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "float_type"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->float_type:Lbq/def/log_arg_type_enum;

    .line 31
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string v1, "double_type"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->double_type:Lbq/def/log_arg_type_enum;

    .line 32
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "string_utf8_type"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->string_utf8_type:Lbq/def/log_arg_type_enum;

    .line 33
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "string_utf16_type"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->string_utf16_type:Lbq/def/log_arg_type_enum;

    .line 34
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "string_utf32_type"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->string_utf32_type:Lbq/def/log_arg_type_enum;

    .line 35
    new-instance v0, Lbq/def/log_arg_type_enum;

    const-string/jumbo v1, "string_utf_mixed_type"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lbq/def/log_arg_type_enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_arg_type_enum;->string_utf_mixed_type:Lbq/def/log_arg_type_enum;

    .line 14
    invoke-static {}, Lbq/def/log_arg_type_enum;->$values()[Lbq/def/log_arg_type_enum;

    move-result-object v0

    sput-object v0, Lbq/def/log_arg_type_enum;->$VALUES:[Lbq/def/log_arg_type_enum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbq/def/log_arg_type_enum;
    .locals 1

    .line 14
    const-class v0, Lbq/def/log_arg_type_enum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq/def/log_arg_type_enum;

    return-object p0
.end method

.method public static values()[Lbq/def/log_arg_type_enum;
    .locals 1

    .line 14
    sget-object v0, Lbq/def/log_arg_type_enum;->$VALUES:[Lbq/def/log_arg_type_enum;

    invoke-virtual {v0}, [Lbq/def/log_arg_type_enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq/def/log_arg_type_enum;

    return-object v0
.end method
