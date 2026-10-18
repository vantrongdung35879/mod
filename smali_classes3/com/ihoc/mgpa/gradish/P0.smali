.class public Lcom/ihoc/mgpa/gradish/P0;
.super Lcom/ihoc/mgpa/gradish/p0;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/Class; = null

.field private static c:Ljava/lang/reflect/Method; = null

.field private static d:Ljava/lang/Class; = null

.field private static e:Ljava/lang/reflect/Constructor; = null

.field private static f:Ljava/lang/reflect/Method; = null

.field private static g:Ljava/lang/reflect/Method; = null

.field private static h:Ljava/lang/reflect/Method; = null

.field private static i:Ljava/lang/reflect/Method; = null

.field private static j:Ljava/lang/reflect/Method; = null

.field private static k:Ljava/lang/reflect/Method; = null

.field private static l:Ljava/lang/reflect/Method; = null

.field private static m:Ljava/lang/reflect/Method; = null

.field private static n:Ljava/lang/reflect/Method; = null

.field private static o:Z = false


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/p0;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P0;->a:Ljava/lang/Object;

    return-void
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "StandardHapticPlayer"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 31
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 35
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    array-length p2, p2

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v2

    const/4 p0, 0x2

    aput-object p2, v3, p0

    .line 37
    const-string p0, "Didn\'t find class %s \'s method %s with %d arg!"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 38
    :cond_1
    :goto_0
    const-string p0, "get class method failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private a(Ljava/lang/String;III)V
    .locals 5

    .line 13
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->c:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ihoc/mgpa/gradish/P0;->b:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->e:Ljava/lang/reflect/Constructor;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/P0;->a:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    sget-object p3, Lcom/ihoc/mgpa/gradish/P0;->g:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;IIII)V
    .locals 5

    .line 14
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->c:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ihoc/mgpa/gradish/P0;->b:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->e:Ljava/lang/reflect/Constructor;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/P0;->a:Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->j:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/String;III)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized c()Z
    .locals 9

    const-class v0, Lcom/ihoc/mgpa/gradish/P0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ihoc/mgpa/gradish/P0;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 8
    :try_start_1
    const-string v2, "android.os.DynamicEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->b:Ljava/lang/Class;

    .line 9
    const-string v2, "android.os.HapticPlayer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Lcom/ihoc/mgpa/gradish/P0;->b:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->e:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->b:Ljava/lang/Class;

    const-string v4, "create"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v2, v4, v5}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->c:Ljava/lang/reflect/Method;

    .line 26
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string v4, "isAvailable"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->f:Ljava/lang/reflect/Method;

    .line 28
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string v4, "start"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v5, v6, v1

    invoke-static {v2, v4, v6}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->g:Ljava/lang/reflect/Method;

    .line 29
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string/jumbo v4, "stop"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-static {v2, v4, v6}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->h:Ljava/lang/reflect/Method;

    .line 31
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string v4, "start"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v5, v7, v1

    aput-object v5, v7, v3

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v2, v4, v7}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->i:Ljava/lang/reflect/Method;

    .line 34
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string v4, "start"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v5, v7, v1

    aput-object v5, v7, v3

    aput-object v5, v7, v8

    aput-object v5, v7, v6

    invoke-static {v2, v4, v7}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->j:Ljava/lang/reflect/Method;

    .line 36
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string/jumbo v4, "updateInterval"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v1

    invoke-static {v2, v4, v7}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->k:Ljava/lang/reflect/Method;

    .line 37
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string/jumbo v4, "updateAmplitude"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v1

    invoke-static {v2, v4, v7}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->l:Ljava/lang/reflect/Method;

    .line 38
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string/jumbo v4, "updateFrequency"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v1

    invoke-static {v2, v4, v7}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ihoc/mgpa/gradish/P0;->m:Ljava/lang/reflect/Method;

    .line 39
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const-string/jumbo v4, "updateParameter"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    aput-object v5, v6, v8

    invoke-static {v2, v4, v6}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ihoc/mgpa/gradish/P0;->n:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    const-string v1, "StandardHapticPlayer"

    const-string v2, "find DynamicEffect/HapticPlayer class method exception in this os version!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/P0;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ihoc/mgpa/gradish/P0;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->g:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->h:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    .line 48
    :try_start_4
    sget-object v2, Lcom/ihoc/mgpa/gradish/P0;->d:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/ihoc/mgpa/gradish/P0;->o:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 50
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    const-string v1, "StandardHapticPlayer"

    const-string v2, "invoke HapticPlayer isAvailable method exception in this os version!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    :cond_1
    const-string v1, "StandardHapticPlayer"

    const-string v2, "This os version don\'t support standard haptic player, some necessary method is missing!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_1
    sget-boolean v1, Lcom/ihoc/mgpa/gradish/P0;->o:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return v1

    :catch_2
    move-exception v2

    .line 57
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    const-string v2, "StandardHapticPlayer"

    const-string v3, "find DynamicEffect class exception in this os version!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return v1

    .line 59
    :catch_3
    :try_start_7
    const-string v2, "StandardHapticPlayer"

    const-string v3, "can\'t find HapticPlayer constructor in this os version!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return v1

    .line 60
    :catch_4
    :try_start_8
    const-string v2, "StandardHapticPlayer"

    const-string v3, "can\'t find DynamicEffect/HapticPlayer class in this os version!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/P0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p5, v0, :cond_1

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/ihoc/mgpa/gradish/P0;->b(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/P0;->a(Ljava/lang/String;III)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/P0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/P0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/P0;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/P0;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/P0;->o:Z

    return v0
.end method
