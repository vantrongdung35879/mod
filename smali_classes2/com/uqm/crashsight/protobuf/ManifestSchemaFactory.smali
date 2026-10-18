.class final Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final b:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->b:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1118
    new-instance v0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    const/4 v2, 0x0

    .line 1119
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;->a()Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->a()Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/uqm/crashsight/protobuf/MessageInfoFactory;)V

    .line 44
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;-><init>(Lcom/uqm/crashsight/protobuf/MessageInfoFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MessageInfoFactory;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->a:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    return-void
.end method

.method private static a()Lcom/uqm/crashsight/protobuf/MessageInfoFactory;
    .locals 3

    .line 166
    :try_start_0
    const-string v0, "com.uqm.crashsight.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->b:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/MessageInfo;)Z
    .locals 1

    .line 114
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageInfo;->a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Class;)V

    .line 55
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->a:Lcom/uqm/crashsight/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/MessageInfoFactory;->b(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/MessageInfo;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionSchemas;->a()Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-result-object v0

    .line 63
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v1

    .line 60
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionSchemas;->b()Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-result-object v0

    .line 68
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v1

    .line 65
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/MessageSetSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 2075
    :cond_1
    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2076
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2080
    invoke-static {}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->b()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 2081
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b()Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    move-result-object v3

    .line 2082
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 2083
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionSchemas;->a()Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-result-object v5

    .line 2084
    invoke-static {}, Lcom/uqm/crashsight/protobuf/MapFieldSchemas;->b()Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    move-result-object v6

    .line 2077
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;

    move-result-object p1

    goto :goto_0

    .line 2088
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->b()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 2089
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b()Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    move-result-object v3

    .line 2090
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 2092
    invoke-static {}, Lcom/uqm/crashsight/protobuf/MapFieldSchemas;->b()Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    move-result-object v6

    .line 2085
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;

    move-result-object p1

    return-object p1

    .line 2094
    :cond_3
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2098
    invoke-static {}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->a()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 2099
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a()Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    move-result-object v3

    .line 2100
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 2101
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionSchemas;->b()Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-result-object v5

    .line 2102
    invoke-static {}, Lcom/uqm/crashsight/protobuf/MapFieldSchemas;->a()Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    move-result-object v6

    .line 2095
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;

    move-result-object p1

    return-object p1

    .line 2106
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->a()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 2107
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a()Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    move-result-object v3

    .line 2108
    invoke-static {}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 2110
    invoke-static {}, Lcom/uqm/crashsight/protobuf/MapFieldSchemas;->a()Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    move-result-object v6

    .line 2103
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;

    move-result-object p1

    :goto_0
    return-object p1
.end method
