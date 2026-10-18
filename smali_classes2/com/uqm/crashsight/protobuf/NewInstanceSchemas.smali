.class final Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

.field private static final b:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->c()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->a:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    .line 35
    new-instance v0, Lcom/uqm/crashsight/protobuf/NewInstanceSchemaLite;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/NewInstanceSchemaLite;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->b:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;
    .locals 1

    .line 38
    sget-object v0, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->a:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method static b()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;
    .locals 1

    .line 42
    sget-object v0, Lcom/uqm/crashsight/protobuf/NewInstanceSchemas;->b:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method private static c()Lcom/uqm/crashsight/protobuf/NewInstanceSchema;
    .locals 2

    const/4 v0, 0x0

    .line 47
    :try_start_0
    const-string v1, "com.uqm.crashsight.protobuf.NewInstanceSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/NewInstanceSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
